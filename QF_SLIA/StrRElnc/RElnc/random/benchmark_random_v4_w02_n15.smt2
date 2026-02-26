(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ z a) (str.++ x "76" y)))

(assert (str.in_re z (re.+ (re.++ (str.to_re "87") (re.range "2" "8")))))
(assert (str.in_re x (re.union (re.+ (re.+ (str.to_re "8"))) (str.to_re "74"))))
(assert (str.in_re a (re.union (str.to_re "635") (re.* (re.* (re.range "4" "8"))))))
(assert (str.in_re y (re.+ (re.union (re.union (re.range "4" "6") (str.to_re "59")) (str.to_re "325")))))

(assert (> (+ (* 9 (str.to_int x)) (* 3 (str.to_int y)) (* (- 7) (str.to_int z)) (- (str.to_int a))) 99))
(assert (<= (+ (* (- 9) (str.len x)) (* (- 8) (str.len y)) (* (- 2) (str.len z)) (* (- 3) (str.len a))) 87))

(check-sat)