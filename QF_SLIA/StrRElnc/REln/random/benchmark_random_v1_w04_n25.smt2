(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "498")) (re.range "3" "7"))))

(assert (<= (+ (* (- 10) (str.len x)) (* (- 2) (str.to_int x))) 45))
(assert (< (+ (* (- 7) (str.len x)) (* (- 6) (str.to_int x))) 50))

(check-sat)