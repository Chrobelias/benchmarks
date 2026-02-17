(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (re.range "6" "9") (re.* (re.range "7" "9"))) (str.to_re "52"))))

(assert (<= (* (- 2) (str.len x)) 72))
(assert (> (* 4 (str.len x)) 95))
(assert (< (+ (* (- 5) (str.len x)) (* 5 (str.to_int x))) 74))
(assert (>= (* 10 (str.to_int x)) 32))

(check-sat)