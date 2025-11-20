
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

#GREEN := \033[0;32m
#YELLOW := \033[1;33m
#BLUE := \033[1;34m
#NC := \033[0m   # reset color

#all: add commit push status

#sync: stash pull

#add:
#	@echo "$(BLUE)[ADD]$(NC) Adding files..."
#	@git add .
#	@echo "$(GREEN)[DONE]$(NC)"

#status:
#	@echo "$(YELLOW)[STATUS]$(NC)"
#	@git status

#commit:
#	@read -p "Enter commit message: " msg; \
#	echo "$(BLUE)[COMMIT]$(NC) Committing..."; \
#	git commit -m "$$msg"; \
#	echo "$(GREEN)[DONE]$(NC)"

#push:
#	@echo "$(BLUE)[PUSH]$(NC) Pushing to remote..."
#	@git push origin main
#	@echo "$(GREEN)[DONE]$(NC)"

#stash:
#	@echo "$(BLUE)[STASH]$(NC) Stashing changes..."
#	@git stash -u "Auto stash from Makefile"
#	@echo "$(GREEN)[DONE]$(NC)"

#pull:
#	@echo "$(BLUE)[PULL]$(NC) Pulling latest changes..."
#	@git pull origin main
#	@echo "$(GREEN)[DONE]$(NC)"


####################################################################



#GREEN:= \033[0;32m
#YELLOW := \033[1;33m
#BLUE := \033[1;34m
#RED := \033[0;31m
#NC := \033[0m

#all: add commit push status

#sync: stash pull status

#add:
#	@printf "$(BLUE)[ADD]$(BLUE) Adding files...\n"
#	@git add . || { printf "$(RED)[ERROR] add failed!$(NC)\n"; exit 1; }

#status:
#	@printf "$(YELLOW)[STATUS]$(NC)\n"
#	@git status || { printf "$(RED)[ERROR] status failed!$(NC)\n"; exit 1; }

#commit:
#	@read -p "$(BLUE)[COMMIT]$(BLUE) Enter commit message: " msg; \
#	printf " $(BLUE)[COMMIT]$(BLUE) Committing...\n"; \
#	git commit -m "$$msg" || { printf "$(RED)[ERROR] commit failed!$(NC)\n"; exit 1; }; \
#	printf "$(GREEN)[COMMIT]$(BLUE) Committed successfully \n"

#push:
#	@printf "$(BLUE)[PUSH]$(NC) Pushing to remote...\n"
#	@git push origin main || { printf "$(RED)[ERROR] push failed!$(NC)\n"; exit 1; }
#	@printf "$(GREEN)[PUSH]$(GREEN) Pushed to remote \n"

#stash:
#	@printf "$(BLUE)[STASH]$(NC) Stashing changes...\n"
#	@git stash -u || { printf "$(RED)[ERROR] stash failed!$(NC)\n"; exit 1; }
#	@printf "$(GREEN) stashed the previous commits \n"

#pull:
#	@printf "$(BLUE)[PULL]$(NC) Pulling latest changes...\n"
#	@git pull origin main || { printf "$(RED)[ERROR] pull failed!$(NC)\n"; exit 1; }
#	@printf "$(GREEN) pulled the latest changes \n"

########################################################################################
# ======================
#		COLOR DEFINITIONS
# ======================
GREEN  := \033[0;32m
YELLOW := \033[1;33m
BLUE   := \033[1;34m
RED    := \033[0;31m
NC     := \033[0m

# ======================
#       SHORTCUTS
# ======================
all: add commit push status
sync: stash pull status

# ======================
#        COMMANDS
# ======================

add:
	@printf "$(BLUE)[ADD]$(NC) Adding files...\n"
	@git add . || { printf "$(RED)[ERROR] add failed!$(NC)\n"; exit 1; }
	@printf "$(GREEN)[ADD]$(NC) Files added successfully.\n"

status:
	@printf "$(YELLOW)[STATUS]$(NC)\n"
	@git status || { printf "$(RED)[ERROR] status failed!$(NC)\n"; exit 1; }

commit:
	@read -p "$(BLUE)[COMMIT]$(NC) Enter commit message: " msg; \
	printf "$(BLUE)[COMMIT]$(NC) Committing...\n"; \
	git commit -m "$$msg" || { printf "$(RED)[ERROR] commit failed!$(NC)\n"; exit 1; }; \
	printf "$(GREEN)[COMMIT]$(NC) Commit successful!\n"

push:
	@printf "$(BLUE)[PUSH]$(NC) Pushing to remote...\n"
	@git push origin main || { printf "$(RED)[ERROR] push failed!$(NC)\n"; exit 1; }
	@printf "$(GREEN)[PUSH]$(NC) Push successful!\n"

stash:
	@printf "$(BLUE)[STASH]$(NC) Stashing changes...\n"
	@git stash -u || { printf "$(RED)[ERROR] stash failed!$(NC)\n"; exit 1; }
	@printf "$(GREEN)[STASH]$(NC) Changes stashed.\n"

pull:
	@printf "$(BLUE)[PULL]$(NC) Pulling latest changes...\n"
	@git pull origin main --rebase || { printf "$(RED)[ERROR] pull failed!$(NC)\n"; exit 1; }
	@printf "$(GREEN)[PULL]$(NC) Pull successful!\n"

