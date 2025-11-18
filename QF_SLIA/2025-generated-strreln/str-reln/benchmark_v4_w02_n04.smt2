(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.* (re.* (re.* (str.to_re "920")))))))
(assert (str.in_re y (re.++ (re.++ (re.++ (str.to_re "794") (re.* (str.to_re "5"))) (re.range "7" "9")) (str.to_re "63"))))
(assert (str.in_re z (re.+ (re.union (re.union (re.+ (str.to_re "32")) (str.to_re "96")) (str.to_re "18")))))
(assert (str.in_re a (re.++ (re.++ (str.to_re "825") (re.* (re.range "5" "7"))) (re.+ (str.to_re "21")))))

(assert (<= (+ (* (- 2) (str.len z)) (* 4 (str.len a)) (* 6 (str.to_int x))) 6))

(check-sat)