# Makefile

.PHONY: all build clean

# Nom de l’image à construire (une seule fois)
IMAGE_NAME := mvn-builder

# ------------------------------------------------------------------
# 1️⃣ Construction de l’image Docker – fait une fois
# ------------------------------------------------------------------
build-image:
	@echo "=== Construire l'image Docker ==="
	podman build -t $(IMAGE_NAME) .

# ------------------------------------------------------------------
# 2️⃣ Build Maven via le conteneur (volume local)
# ------------------------------------------------------------------
build: build-image
	@echo "=== Lancer mvn clean package dans un container ==="
	podman run --rm \
	  -v "$(PWD)":/app \
	  -w /app \
	  $(IMAGE_NAME)

# ------------------------------------------------------------------
# 3️⃣ Nettoyage éventuel (supprimer l’image)
# ------------------------------------------------------------------
clean:
	@echo "=== Supprimer l'image Docker ==="
	podman rmi -f $(IMAGE_NAME) || true


