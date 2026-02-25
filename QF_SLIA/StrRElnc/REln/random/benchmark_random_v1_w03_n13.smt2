(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.range "1" "9") (re.+ (re.* (str.to_re "68"))))))

(assert (<= (* 5 (str.to_int x)) 74))
(assert (> (+ (* (- 3) (str.len x)) (* (- 8) (str.to_int x))) 83))

(check-sat)