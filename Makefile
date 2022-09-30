NAME = a.out
SRCS = $(wildcard *.cpp)

run: all
	./$(NAME)

all: $(NAME)

$(NAME): $(SRCS)
	g++ -o $(NAME) $(SRCS)

docker d:
	docker-compose run tes bash
