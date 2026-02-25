(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.union (re.++ (str.to_re "8") (re.* (re.range "0" "5"))) (str.to_re "12")) (re.range "3" "8"))))

(assert (>= (+ (* 7 (str.len x)) (* (- 7) (str.to_int x))) 41))
(assert (> (* 7 (str.to_int x)) 5))

(check-sat)