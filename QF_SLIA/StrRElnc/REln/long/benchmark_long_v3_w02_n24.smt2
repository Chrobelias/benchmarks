(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.* (re.union (str.to_re "223") (re.* (str.to_re "732"))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "63")) (re.++ (str.to_re "98") (str.to_re "330")))))
(assert (str.in_re x (re.+ (str.to_re "20"))))

(assert (= (+ (str.len z) (* 4 (str.to_int x))) 23))

(check-sat)