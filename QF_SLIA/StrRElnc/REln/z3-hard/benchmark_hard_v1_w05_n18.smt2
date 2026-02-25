(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "622") (re.++ (str.to_re "767") (re.* (re.range "1" "9")))))))

(assert (> (* 2 (str.to_int x)) 94))
(assert (<= (+ (* (- 8) (str.len x)) (* 5 (str.to_int x))) 67))
(assert (= (+ (* (- 3) (str.len x)) (* 2 (str.to_int x))) 26))

(check-sat)