(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ y a) (str.++ "38" "62" z x)))

(assert (str.in_re a (re.union (str.to_re "14") (re.union (str.to_re "734") (re.union (re.* (str.to_re "925")) (re.range "7" "9"))))))
(assert (str.in_re z (re.union (re.* (re.range "1" "9")) (re.* (str.to_re "285")))))
(assert (str.in_re x (re.+ (re.union (str.to_re "1") (re.+ (str.to_re "7"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "0")) (re.+ (re.range "0" "8")))))

(assert (= (+ (* (- 7) (str.len x)) (* (- 6) (str.len a)) (- (str.to_int z))) 6))

(check-sat)