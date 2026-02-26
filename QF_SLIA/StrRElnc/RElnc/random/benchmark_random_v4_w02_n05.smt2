(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= x (str.++ "93" z y a)))

(assert (str.in_re z (re.+ (re.++ (re.+ (re.* (str.to_re "188"))) (str.to_re "9")))))
(assert (str.in_re x (re.* (re.++ (re.* (re.range "0" "5")) (re.+ (re.range "4" "9"))))))
(assert (str.in_re y (re.union (re.range "3" "8") (re.union (re.range "5" "8") (re.* (str.to_re "1"))))))
(assert (str.in_re a (re.* (re.+ (re.* (str.to_re "8"))))))

(assert (<= (+ (* 10 (str.to_int x)) (* 4 (str.to_int y)) (str.to_int z) (* 2 (str.to_int a))) 20))
(assert (<= (+ (str.len x) (* 4 (str.len y)) (* 7 (str.len z)) (* 2 (str.len a))) 21))

(check-sat)