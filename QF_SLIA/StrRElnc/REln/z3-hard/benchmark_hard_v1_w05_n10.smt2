(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.range "6" "9") (re.* (re.range "6" "8"))) (re.* (str.to_re "6")))))

(assert (<= (* (- 7) (str.to_int x)) 58))
(assert (<= (* 7 (str.to_int x)) 29))
(assert (>= (* 8 (str.to_int x)) 22))
(assert (>= (+ (* 7 (str.len x)) (* (- 6) (str.to_int x))) 0))

(check-sat)