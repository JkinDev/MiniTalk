# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jrus-gar <jrus-gar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/14 19:00:50 by jrus-gar          #+#    #+#              #
#    Updated: 2023/09/15 23:46:27 by jrus-gar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minitalk.h

CC = gcc
CFLAGS = -Wall -Werror -Wextra
RM = rm -rf
AR = ar crs


SERVER = server
SRC_SERVER = ./src/server.c

CLIENT = client
SRC_CLIENT = ./src/client.c

# SERVER_B =
# SRCS_SERVER_B =

# CLIENT_B =
# SRCS_CLIENT_B =

all: banner $(SERVER) $(CLIENT)

$(SERVER): $(SRC_SERVER)
	@$(CC) $(CFLAGS) -o $(SERVER) $(SRC_SERVER)
	@echo "\n🖥 $(GREEN) Server is ready$(RESET) ✅\n"

$(CLIENT): $(SRC_CLIENT)
	@$(CC) $(CFLAGS) -o $(CLIENT) $(SRC_CLIENT)
	@echo "\n🖥 $(GREEN) Client is ready$(RESET) ✅\n"

clean:
	@$(RM) $(CLIENT) $(SERVER)
	@echo "\n🚮 $(RED) Binary files removed $(RESET) 🗑️\n"

fclean: clean
	@$(RM) $(CLIENT) $(SERVER)
	@echo "\n🚮 $(RED) Executable files removed $(RESET) 🧹\n"

banner:
	@echo "\n$(CYAN)███╗░░░███╗██╗███╗░░██╗██╗████████╗░█████╗░██╗░░░░░██╗░░██╗$(RESET)"
	@echo   "$(CYAN)████╗░████║██║████╗░██║██║╚══██╔══╝██╔══██╗██║░░░░░██║░██╔╝$(RESET)"
	@echo   "$(CYAN)██╔████╔██║██║██╔██╗██║██║░░░██║░░░███████║██║░░░░░█████═╝░$(RESET)"
	@echo   "$(CYAN)██║╚██╔╝██║██║██║╚████║██║░░░██║░░░██╔══██║██║░░░░░██╔═██╗░$(RESET)"
	@echo   "$(CYAN)██║░╚═╝░██║██║██║░╚███║██║░░░██║░░░██║░░██║███████╗██║░╚██╗$(RESET)"
	@echo   "$(CYAN)╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝$(RESET)\n"
	@echo   "42 Málaga ------------------------------------ By: jrus-gar\n"

re: fclean all

.PHONY: all clean fclean re bonus

#COLORS
 BLACK = \033[1;30m
 RED = \033[1;31m
 GREEN = \033[1;32m
 YELLOW = \033[1;33m
 BLUE = \033[1;34m
 MAGENTA = \033[1;35m
 CYAN = \033[1;36m
 WHITE = \033[1;37m
