(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "21") (re.++ (re.range "0" "6") (str.to_re "228"))))))

(assert (< (+ (* 6 (str.len x)) (* (- 4) (str.to_int x))) 5))
(assert (>= (* (- 10) (str.len x)) 100))
(assert (< (* 7 (str.len x)) 77))
(assert (> (* 9 (str.len x)) 11))

(check-sat)