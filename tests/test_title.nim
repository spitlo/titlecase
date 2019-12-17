import unittest
import anycase/title

suite "title":
  test "title -> title":
    check title("Change My Case") == "Change My Case"

  test "path -> title":
    check title("change/my/case") == "Change My Case"

  test "kebab -> title":
    check title("change-my-case") == "Change My Case"

  test "camel -> title":
    check title("changeMyCase") == "Change My Case"

  test "pascal -> title":
    check title("ChangeMyCase") == "Change My Case"

  test "snake -> title":
    check title("change_my_case") == "Change My Case"

