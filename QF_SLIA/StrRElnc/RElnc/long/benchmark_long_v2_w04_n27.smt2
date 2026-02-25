(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "99")))

(assert (str.in_re x (re.++ (str.to_re "3") (re.+ (re.range "6" "9")))))
(assert (str.in_re y (re.union (re.union (str.to_re "402") (re.* (str.to_re "870"))) (re.range "2" "7"))))

(assert (> (+ (* 8 (str.to_int x)) (* 8 (str.to_int y))) 69))
(assert (> (+ (str.to_int x) (* 4 (str.to_int y))) 49))
(assert (>= (+ (* 4 (str.len x)) (* 9 (str.to_int x))) 87))

(check-sat)