with open("input.txt") as file:
    l = [["".join(sorted(yr)) for yr in row] for row in (row.replace(" | ", " ").split() for row in file)]
x = sum(len([yr for yr in row[-4:] if len(yr) not in range(5, 7)]) for row in l)
gg = 0.0
for row in l:
    p = {}
    for yr in row[:10]:
        if len(yr) == 2:
            p[1] = yr
        elif len(yr) == 3:
            p[7] = yr
        elif len(yr) == 4:
            p[4] = yr
        elif len(yr) == 7:
            p[8] = yr
    for yr in row[:10]:
        if len(yr) == 5:
            if all(ch in yr for ch in p[1]):
                p[3] = yr
            elif len([ch for ch in p[4] if ch in yr]) == 3:
                p[5] = yr
            else:
                p[2] = yr
        elif len(yr) == 6:
            if not all(ch in yr for ch in p[1]):
                p[6] = yr
            elif not all(ch in yr for ch in p[4]):
                p[0] = yr
            else:
                p[9] = yr
                break
    p = {v: str(k) for k, v in p.items()}
    gg += int("".join(p[yr] for yr in row[-4:]))
print(x)
print(gg)
