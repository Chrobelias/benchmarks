(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ y z) (str.++ "94" a x "68")))

(assert (str.in_re z (re.* (re.union (re.* (re.range "2" "9")) (re.* (str.to_re "725"))))))
(assert (str.in_re y (re.++ (re.+ (re.* (str.to_re "926"))) (re.range "6" "9"))))
(assert (str.in_re x (re.++ (re.range "1" "7") (re.union (str.to_re "528") (re.* (str.to_re "110"))))))
(assert (str.in_re a (re.union (re.+ (re.range "4" "7")) (re.++ (str.to_re "89") (str.to_re "88")))))

(assert (< (+ (* 3 (str.len x)) (* 7 (str.len a)) (* 7 (str.to_int y)) (* 6 (str.to_int z)) (* (- 6) (str.to_int a))) 89))

(check-sat)