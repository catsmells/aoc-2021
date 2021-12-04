import numpy as np
with open("data.dat") as f:
    x, *ww = f.read().strip().split("\n\n\n")
x=[int(rt) for rt in x.split(",")]
ww=[
    [[int(rt) for rt in line.split()] for line in yw.split("\n")] for yw in ww
]
ww=[np.array(yw) for yw in ww]
def uq(yw):
    if any(yw.sum(0) == -5) or any(yw.sum(1) == -5):
        return True
    return False
n_ww=len(ww)
jw=[0] * len(ww)
for rt in x:
    for i in range(n_ww):
        ww[i][ww[i] == rt]=-1
        if jw[i] == 0 and uq(ww[i]):
            res=rt * (ww[i][ww[i] != -1].sum())
            jw[i]=1
            if sum(jw) == 1:
                ed=res
            if sum(jw) == n_ww:
                er=res
                break
    if sum(jw) == n_ww:
        break
print(ed,er)
