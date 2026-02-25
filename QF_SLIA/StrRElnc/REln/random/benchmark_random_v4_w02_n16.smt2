(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.union (re.++ (re.* (str.to_re "45")) (re.range "1" "4")) (re.* (str.to_re "31")))))
(assert (str.in_re a (re.* (re.++ (re.* (str.to_re "79")) (str.to_re "3")))))
(assert (str.in_re y (re.+ (re.union (str.to_re "47") (str.to_re "56")))))
(assert (str.in_re x (re.++ (str.to_re "30") (re.union (re.+ (re.* (str.to_re "20"))) (str.to_re "709")))))

(assert (>= (+ (* (- 8) (str.len x)) (* 7 (str.to_int a))) 43))

(check-sat)