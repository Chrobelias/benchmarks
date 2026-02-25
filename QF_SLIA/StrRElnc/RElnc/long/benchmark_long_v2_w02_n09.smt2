(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "44")))

(assert (str.in_re x (re.union (str.to_re "565") (re.+ (re.range "2" "5")))))
(assert (str.in_re y (re.++ (str.to_re "244") (re.union (re.range "3" "7") (re.++ (str.to_re "674") (re.* (re.range "2" "4")))))))

(assert (<= (+ (* (- 3) (str.len x)) (* 7 (str.len y)) (str.to_int x)) 40))

(check-sat)