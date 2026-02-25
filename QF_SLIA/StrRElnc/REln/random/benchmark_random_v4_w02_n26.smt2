(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.range "7" "9") (re.+ (re.* (str.to_re "1"))))))
(assert (str.in_re z (re.++ (re.* (re.range "3" "8")) (re.+ (str.to_re "550")))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "92") (re.++ (str.to_re "79") (str.to_re "592"))))))
(assert (str.in_re y (re.union (str.to_re "72") (re.union (re.+ (re.range "6" "9")) (str.to_re "905")))))

(assert (< (+ (* (- 2) (str.len x)) (* 10 (str.len y)) (* 9 (str.len a)) (* 6 (str.to_int x)) (* 10 (str.to_int z)) (* 8 (str.to_int a))) 42))

(check-sat)