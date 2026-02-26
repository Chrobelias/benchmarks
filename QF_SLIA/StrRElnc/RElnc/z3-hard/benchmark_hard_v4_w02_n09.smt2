(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ a x) (str.++ z "45" y "94")))

(assert (str.in_re z (re.+ (re.union (str.to_re "1") (re.range "4" "6")))))
(assert (str.in_re x (re.* (re.union (str.to_re "89") (re.union (re.range "3" "8") (str.to_re "9"))))))
(assert (str.in_re y (re.union (re.* (re.* (str.to_re "880"))) (str.to_re "43"))))
(assert (str.in_re a (re.++ (re.+ (str.to_re "4")) (re.++ (re.* (str.to_re "31")) (re.range "6" "9")))))

(assert (= (+ (* (- 3) (str.len x)) (* (- 10) (str.len y)) (- (str.len z)) (* 6 (str.len a))) 37))
(assert (= (+ (* (- 7) (str.to_int x)) (* (- 7) (str.to_int y)) (* 6 (str.to_int z)) (* 2 (str.to_int a))) 58))

(check-sat)