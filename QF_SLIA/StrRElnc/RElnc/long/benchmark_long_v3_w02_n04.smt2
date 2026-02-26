(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (= (str.++ y x) (str.++ "27" z)))

(assert (str.in_re x (re.union (str.to_re "992") (re.* (re.range "7" "9")))))
(assert (str.in_re z (re.+ (re.+ (re.++ (str.to_re "47") (re.* (str.to_re "756")))))))
(assert (str.in_re y (re.union (re.+ (re.union (re.* (str.to_re "10")) (re.range "1" "8"))) (str.to_re "744"))))

(assert (> (+ (* 10 (str.len x)) (* (- 10) (str.len z)) (* (- 7) (str.to_int z))) 93))

(check-sat)