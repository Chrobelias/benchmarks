(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.range "7" "9")) (str.to_re "27"))))

(assert (>= (+ (* (- 4) (str.len x)) (* (- 2) (str.to_int x))) 43))
(assert (= (* (- 10) (str.to_int x)) 32))
(assert (< (* (- 8) (str.to_int x)) 17))

(check-sat)