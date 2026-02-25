(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "39" x)))

(assert (str.in_re x (re.union (re.union (re.range "2" "9") (re.++ (re.* (str.to_re "94")) (str.to_re "58"))) (str.to_re "158"))))
(assert (str.in_re y (re.* (re.union (str.to_re "725") (re.union (re.range "2" "9") (re.range "1" "3"))))))

(assert (<= (+ (* (- 6) (str.to_int x)) (* 8 (str.to_int y))) 64))
(assert (= (+ (* (- 6) (str.len x)) (str.to_int x) (* (- 6) (str.to_int y))) 37))

(check-sat)