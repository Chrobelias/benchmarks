(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (re.* (re.+ (re.range "5" "7")))) (str.to_re "80"))))

(assert (>= (+ (* 7 (str.len x)) (* (- 2) (str.to_int x))) 50))
(assert (<= (* 8 (str.to_int x)) 25))

(check-sat)