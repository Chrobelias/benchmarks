(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "707") (re.* (re.range "7" "9"))))))

(assert (<= (+ (* (- 10) (str.len x)) (* 2 (str.to_int x))) 51))
(assert (< (* 10 (str.to_int x)) 26))
(assert (< (* 3 (str.len x)) 76))

(check-sat)