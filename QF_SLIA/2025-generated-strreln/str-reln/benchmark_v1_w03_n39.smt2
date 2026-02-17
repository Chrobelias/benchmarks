(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (re.* (re.range "2" "8"))) (str.to_re "6"))))

(assert (< (* 5 (str.to_int x)) 54))
(assert (> (+ (* 3 (str.len x)) (* (- 5) (str.to_int x))) 61))

(check-sat)