(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.union (re.++ (str.to_re "4") (re.+ (str.to_re "3"))) (re.+ (str.to_re "69")))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "870") (re.++ (str.to_re "4") (re.+ (str.to_re "625")))))))
(assert (str.in_re y (re.union (re.* (re.range "5" "8")) (re.++ (str.to_re "596") (str.to_re "972")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "363")) (str.to_re "4"))))

(assert (< (+ (* (- 3) (str.len y)) (* (- 9) (str.len z)) (* 4 (str.to_int y)) (* 8 (str.to_int a))) 52))

(check-sat)