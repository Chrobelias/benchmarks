(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ y z "58")))

(assert (str.in_re z (re.union (re.range "3" "8") (re.++ (re.* (str.to_re "8")) (str.to_re "127")))))
(assert (str.in_re y (re.union (str.to_re "3") (re.union (re.* (str.to_re "22")) (re.* (str.to_re "8"))))))
(assert (str.in_re x (re.++ (re.+ (re.range "5" "9")) (re.* (re.range "3" "6")))))

(assert (< (+ (* 6 (str.len y)) (* 8 (str.to_int x)) (* 9 (str.to_int y))) 44))

(check-sat)