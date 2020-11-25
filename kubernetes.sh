#!/bin/zsh


# Useful for Kubernetes Control
alias -g k='kubectl'

# Minikube
mk() {
  arg=$1
  if [[ $arg == "restart" ]]; then
    minikube delete && minikube start --memory=16384 --cpus=4 && minikube addons enable metrics-server
  fi
}
