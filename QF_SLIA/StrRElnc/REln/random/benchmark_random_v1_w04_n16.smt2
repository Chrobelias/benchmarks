(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "41") (re.++ (re.range "4" "7") (str.to_re "26"))))))

(assert (<= (* (- 5) (str.len x)) 31))
(assert (>= (+ (* (- 8) (str.len x)) (* 10 (str.to_int x))) 13))
(assert (>= (* (- 3) (str.len x)) 51))

(check-sat)