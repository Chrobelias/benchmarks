(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.* (re.++ (re.+ (str.to_re "4")) (str.to_re "45")))))
(assert (str.in_re y (re.* (re.* (re.* (re.* (str.to_re "341")))))))
(assert (str.in_re z (re.* (str.to_re "447"))))
(assert (str.in_re a (re.* (re.++ (re.++ (str.to_re "544") (re.+ (re.range "2" "8"))) (str.to_re "77")))))
(assert (str.in_re b (re.++ (re.union (re.union (re.+ (str.to_re "751")) (str.to_re "80")) (str.to_re "11")) (re.range "4" "7"))))

(assert (= (+ (* 9 (str.len z)) (* 3 (str.to_int x)) (* (- 5) (str.to_int y)) (* 3 (str.to_int a))) 69))
(assert (>= (+ (* 10 (str.to_int x)) (* 2 (str.to_int y)) (* (- 10) (str.to_int z)) (* (- 5) (str.to_int a)) (* 4 (str.to_int b))) 58))

(check-sat)