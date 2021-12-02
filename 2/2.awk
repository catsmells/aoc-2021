/forward/ { HOR += $2; V += aim * $2 }
/up/      { aim -= $2 }
/down/    { aim += $2 }
END       { print HOR * V }
