(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "98")))

(assert (str.in_re y (re.union (re.+ (re.range "2" "9")) (re.++ (str.to_re "4") (re.* (str.to_re "79"))))))
(assert (str.in_re x (re.union (re.* (str.to_re "98")) (re.++ (re.+ (str.to_re "51")) (str.to_re "37")))))

(assert (= (+ (* (- 9) (str.len x)) (* (- 9) (str.to_int x))) 87))

(check-sat)