(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "79" y) (str.++ x "98")))

(assert (str.in_re x (re.union (re.range "6" "9") (re.union (re.+ (str.to_re "867")) (str.to_re "69")))))
(assert (str.in_re y (re.* (re.union (re.++ (str.to_re "632") (re.* (str.to_re "808"))) (re.range "6" "9")))))

(assert (<= (+ (* 10 (str.len x)) (* 5 (str.to_int x)) (* (- 5) (str.to_int y))) 17))

(check-sat)