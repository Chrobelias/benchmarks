(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ z x) (str.++ y "41" a)))

(assert (str.in_re a (re.* (re.union (str.to_re "74") (str.to_re "27")))))
(assert (str.in_re x (re.* (re.union (re.range "7" "9") (re.++ (re.+ (str.to_re "15")) (str.to_re "889"))))))
(assert (str.in_re y (re.+ (re.union (str.to_re "42") (re.* (str.to_re "91"))))))
(assert (str.in_re z (re.* (re.range "0" "4"))))

(assert (> (+ (- (str.to_int x)) (* 8 (str.to_int y)) (* 6 (str.to_int z)) (* (- 10) (str.to_int a))) 45))
(assert (<= (+ (* (- 5) (str.len x)) (str.len y) (* 5 (str.len z)) (* (- 8) (str.len a))) 64))

(check-sat)