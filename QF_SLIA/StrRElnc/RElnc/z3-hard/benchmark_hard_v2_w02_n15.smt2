(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "32" x)))

(assert (str.in_re x (re.union (re.* (re.union (re.range "1" "3") (str.to_re "480"))) (re.range "3" "9"))))
(assert (str.in_re y (re.++ (re.+ (re.range "2" "5")) (re.* (str.to_re "68")))))

(assert (= (+ (* 3 (str.len x)) (* (- 8) (str.to_int x))) 6))

(check-sat)