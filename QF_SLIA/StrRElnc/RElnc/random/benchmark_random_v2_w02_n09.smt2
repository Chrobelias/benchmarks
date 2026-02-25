(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ x "12") (str.++ "46" y)))

(assert (str.in_re x (re.* (re.union (re.+ (re.range "6" "9")) (re.+ (re.range "2" "5"))))))
(assert (str.in_re y (re.* (re.++ (str.to_re "661") (re.union (str.to_re "2") (re.+ (str.to_re "988")))))))

(assert (< (+ (* 8 (str.to_int x)) (* (- 8) (str.to_int y))) 95))
(assert (= (+ (* 3 (str.len x)) (* (- 5) (str.len y))) 75))

(check-sat)