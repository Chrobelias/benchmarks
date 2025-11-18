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

(assert (str.in_re x (re.union (str.to_re "62") (re.* (re.range "5" "7")))))
(assert (str.in_re y (re.union (re.+ (str.to_re "294")) (re.union (re.+ (str.to_re "754")) (str.to_re "484")))))
(assert (str.in_re z (re.+ (re.union (str.to_re "867") (str.to_re "12")))))
(assert (str.in_re a (re.++ (re.+ (re.* (str.to_re "109"))) (str.to_re "7"))))
(assert (str.in_re b (re.* (re.union (re.+ (str.to_re "3")) (str.to_re "4")))))

(assert (= (+ (* (- 5) (str.len x)) (* (- 3) (str.len y)) (* (- 2) (str.len z)) (* 4 (str.len a)) (* 6 (str.len b))) 66))
(assert (> (+ (str.to_int x) (* 8 (str.to_int y)) (str.to_int z) (* (- 4) (str.to_int a)) (* 2 (str.to_int b))) 28))

(check-sat)