(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.union (re.+ (re.range "4" "6")) (re.++ (re.* (re.range "3" "7")) (str.to_re "17")))))
(assert (str.in_re x (re.union (re.range "4" "9") (re.* (re.* (str.to_re "55"))))))
(assert (str.in_re a (re.++ (re.range "7" "9") (re.union (re.+ (str.to_re "3")) (str.to_re "87")))))
(assert (str.in_re z (re.union (str.to_re "79") (re.union (str.to_re "856") (re.* (re.* (str.to_re "375")))))))

(assert (> (+ (* 4 (str.len y)) (* 9 (str.len z)) (* 7 (str.to_int y))) 96))

(check-sat)