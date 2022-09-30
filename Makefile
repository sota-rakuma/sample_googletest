NAME = a.out
SRCS = $(wildcard *.cpp)

run: all
	./$(NAME)

all: $(NAME)

$(NAME): $(SRCS)
	g++ -o $(NAME) $(SRCS)

docker d:
	docker-compose run tes bash

d-up:
	docker-compose up -d

d-down:
	docker-compose down

d-build:
	docker-compose exec -T tes g++ -std=c++11 main.cpp -o test -L/usr/local/lib -lgtest -lgtest_main

d-test:
	docker-compose exec -T tes ./test

d-test2:
	docker-compose up -d
	docker-compose exec -T tes g++ -std=c++11 main.cpp -o test -L/usr/local/lib -lgtest -lgtest_main
	docker-compose exec -T tes ./test
	