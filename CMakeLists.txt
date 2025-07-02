cmake_minimum_required(VERSION 3.5..3.10)

project(my-dots)

# This is for a future implementation idea of adding a graphical ncurses based GUI installation manager. Check out the Roadmap

# add_executable(gdotcop src/g_main.cpp)
# target_link_libraries(dotcop ncurses)

add_executable(dotcop src/dotcop/main.cpp)
