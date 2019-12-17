import unittest
import anycase/title

suite "title":
  test "plain -> title":
    check title("the last of the mohicans") == "The Last of the Mohicans"

  test "path -> title":
    check title("the/last/of/the/mohicans") == "The Last of the Mohicans"

  test "kebab -> title":
    check title("the-last-of-the-mohicans") == "The Last of the Mohicans"

  test "camel -> title":
    check title("theLastOfTheMohicans") == "The Last of the Mohicans"

  test "pascal -> title":
    check title("TheLastOfTheMohicans") == "The Last of the Mohicans"

  test "snake -> title":
    check title("the_last_of_the_mohicans") == "The Last of the Mohicans"

  test "title -> title":
    check title("The Last of the Mohicans") == "The Last of the Mohicans"

