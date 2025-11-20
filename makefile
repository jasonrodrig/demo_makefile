
#add:
#	git add .

#status:
#	git status

#commit:
#	@read -p "Enter commit message: " msg; \
#	git commit -m "$$msg"

#push:
#	git push origin main

#all: 
#	add commit push 

#stash:
#	git stash -u 

#pull:
#	git pull origin main

#sync: 
#	stash pull

####################################################################

GREEN := \033[0;32m
YELLOW := \033[1;33m
BLUE := \033[1;34m
NC := \033[0m   # reset color

all: add commit push status

sync: 
	stash 
	pull

add:
	@echo "$(BLUE)[ADD]$(NC) Adding files..."
	@git add .
	@echo "$(GREEN)[DONE]$(NC)"

status:
	@echo "$(YELLOW)[STATUS]$(NC)"
	@git status

commit:
	@read -p "Enter commit message: " msg; \
	echo "$(BLUE)[COMMIT]$(NC) Committing..."; \
	git commit -m "$$msg"; \
	echo "$(GREEN)[DONE]$(NC)"

push:
	@echo "$(BLUE)[PUSH]$(NC) Pushing to remote..."
	@git push origin main
	@echo "$(GREEN)[DONE]$(NC)"

stash:
	@echo "$(BLUE)[STASH]$(NC) Stashing changes..."
	@git stash -u "Auto stash from Makefile"
	@echo "$(GREEN)[DONE]$(NC)"

pull:
	@echo "$(BLUE)[PULL]$(NC) Pulling latest changes..."
	@git pull origin main
	@echo "$(GREEN)[DONE]$(NC)"


