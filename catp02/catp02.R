vezes <- function(lst, m) {
  if(length(lst) > 0) {
    append(unlist(lst[1])*m, vezes(tail(lst, n = -1), m))
  }
}

inverte <- function(lst) {
  if(length(lst) > 0) {
    append(inverte(tail(lst, n = -1)), unlist(lst[1]))
  }
}

expoente <- function(lst, m) {
  if(length(lst) > 0) {
    append(unlist(lst[1])^m, expoente(tail(lst, n = -1), m))
  }
}