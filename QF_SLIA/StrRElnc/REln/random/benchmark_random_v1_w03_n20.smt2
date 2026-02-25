(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "404"))))

(assert (< (+ (* 4 (str.len x)) (* 6 (str.to_int x))) 2))
(assert (< (* 7 (str.len x)) 12))

(check-sat)