input <- readLines("input.dat")
ww <- lapply(strsplit(input," -> "),trimws)
q <- lapply(ww, function(x) strsplit(x,","))
n <- max(as.numeric(unlist(q)))+1
m <- matrix(0, nrow = n, ncol = n)
rt <- function(m, vr = FALSE){
    for(pair in ww){
        start <- as.numeric(strsplit(pair[[1]], ",")[[1]])+1
        end <- as.numeric(strsplit(pair[[2]], ",")[[1]])+1
        if(start[1] == end[1]){
            m[seq(start[2], end[2]), start[1]] <- m[seq(start[2], end[2]), start[1]]+1
        }else if(start[2] == end[2]){
            m[start[2], seq(start[1], end[1])] <- m[start[2], seq(start[1], end[1])]+1 
        }else{
            if(vr){
                m[cbind(seq(start[2],end[2]),seq(start[1], end[1]))] <- m[cbind(seq(start[2],end[2]),seq(start[1],end[1]))]+1
            }}}sum(m >= 2)}
rt(m,FALSE)
rt(m,TRUE)
vj <- function(m, vr = FALSE){
    for(pair in ww){
        start <- as.numeric(strsplit(pair[[1]],",")[[1]]) + 1
        end <- as.numeric(strsplit(pair[[2]],",")[[1]]) + 1
        if(vr){
            m[cbind(seq(start[2], end[2]),seq(start[1], end[1]))] <- m[cbind(seq(start[2],end[2]),seq(start[1],end[1]))]+1
        }else{
            if(start[1] == end[1] || start[2] == end[2])
                m[cbind(seq(start[2], end[2]),seq(start[1],end[1]))] <- m[cbind(seq(start[2],end[2]),seq(start[1],end[1]))]+1
        }}sum(m >= 2)}
vj(m,FALSE)
vj(m,TRUE)
