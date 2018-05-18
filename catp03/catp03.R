library(functional)
f <- function (x) x*x
g <- function (x) x*x*x
h <- function (x) x*x*x*x
l <- c(f, g, h)

construir <-function(lst, a){
  if(length(lst) > 0) {
    c(lst[[1]](a), construir(tail(lst, n = -1), a))
  }
}
construir(l, 2)

#tail(c(1, 2, 3, 4, 5, 6, 7), n = -1)
#lapply(1:3, function(x) x*x)

f <- function (x, y) x*y
g <- function (x, y) x*y*2
h <- function (x, y) x*y*3
l <- c(f, g, h)

construirdois <-function(lst, a, b){
  if(length(lst) > 0) {
    c(lst[[1]](a, b), construirdois(tail(lst, n = -1), a, b))
  }
}
construirdois(l, 2, 4)

###############################

duplica <- function(lst){
	unlist(lapply(lst, function(x)x*2))
}
duplica(c(1,2,3))

###############################

soma <- function(lst){
	if(length(lst) > 0){
		return(lst[1] + soma(tail(lst, n=-1)))
	}
	return(0)
}
soma(c(1,2,3))

###############################

positivos <- function(lst){
	unlist(lapply(lst, function(x){
							if(x>=0){
								return(TRUE)
							}
							else{
								return(FALSE)
							}
						}
					))
}

positivos(c(-1, 2, -4))

###############################

norma <- function(lst){
	somas <- function(lst){
		if(length(lst) > 0){
			return(lst[1] + soma(tail(lst, n=-1)))
		}
		return(0)
	}
	options(digits = 12)
	sqrt(somas(unlist(lapply(lst, function(x) x^2))))
}

norma(c(0.1, 0.2, 0.3, 0.4));

###############################

produtoInterno <- function(lsta, lstb){
	produtos <- function(lsta, lstb){
		if(length(lsta) > 0){
			return(lsta[1] * lstb[1] + produtos(tail(lsta, n=-1), tail(lstb, n=-1)))
		}
		return(0)
	}
	soma(produtos(lsta, lstb))
}

produtoInterno(c(0.1, 0.4, 0.9), c(0.2, 0.4, 0.5))



































