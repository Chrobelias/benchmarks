(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (re.++ (str.to_re "3") (re.+ (str.to_re "1")))) (str.to_re "78"))))

(assert (< (* (- 4) (str.len x)) 77))
(assert (>= (* 7 (str.len x)) 64))
(assert (> (* (- 6) (str.len x)) 72))
(assert (>= (* 8 (str.to_int x)) 12))
(assert (< (* (- 6) (str.to_int x)) 15))

(check-sat)