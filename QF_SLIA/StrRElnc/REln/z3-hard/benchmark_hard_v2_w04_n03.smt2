(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (str.to_re "24") (re.* (re.* (str.to_re "9"))))))
(assert (str.in_re x (re.++ (re.union (re.++ (re.+ (re.range "4" "6")) (re.range "7" "9")) (re.range "5" "8")) (re.range "5" "9"))))

(assert (>= (+ (* 4 (str.len x)) (* (- 2) (str.to_int x))) 76))
(assert (= (+ (* 10 (str.len y)) (* (- 9) (str.to_int x))) 34))

(check-sat)