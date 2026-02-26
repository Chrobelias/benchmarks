(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= a (str.++ x y "75" z)))

(assert (str.in_re z (re.union (re.union (str.to_re "42") (str.to_re "667")) (re.* (str.to_re "98")))))
(assert (str.in_re a (re.* (re.range "2" "7"))))
(assert (str.in_re y (re.+ (re.++ (re.* (str.to_re "65")) (str.to_re "5")))))
(assert (str.in_re x (re.union (re.* (re.+ (str.to_re "63"))) (str.to_re "83"))))

(assert (>= (+ (str.len x) (* 2 (str.len y)) (* (- 4) (str.len z)) (- (str.len a))) 19))
(assert (<= (+ (str.to_int x) (* 2 (str.to_int y)) (* 8 (str.to_int z)) (* (- 5) (str.to_int a))) 50))

(check-sat)