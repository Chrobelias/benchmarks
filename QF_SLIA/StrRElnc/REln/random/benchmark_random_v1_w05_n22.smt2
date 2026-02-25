(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (re.range "2" "5")) (re.range "0" "8"))))

(assert (> (* 2 (str.to_int x)) 92))
(assert (>= (* (- 10) (str.to_int x)) 20))
(assert (>= (+ (* 8 (str.len x)) (* (- 5) (str.to_int x))) 22))
(assert (>= (* (- 3) (str.to_int x)) 45))

(check-sat)