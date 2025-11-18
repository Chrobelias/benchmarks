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

(assert (str.in_re x (re.* (str.to_re "0"))))
(assert (str.in_re y (re.union (re.union (str.to_re "49") (str.to_re "90")) (re.+ (str.to_re "314")))))
(assert (str.in_re z (re.union (re.++ (re.range "4" "8") (re.+ (str.to_re "726"))) (str.to_re "991"))))
(assert (str.in_re a (re.* (re.+ (str.to_re "674")))))
(assert (str.in_re b (re.+ (str.to_re "83"))))

(assert (< (+ (* 6 (str.len x)) (* 9 (str.len y)) (* 6 (str.len z)) (* (- 9) (str.len a)) (- (str.len b))) 60))
(assert (<= (+ (* (- 6) (str.len y)) (str.len z) (* (- 4) (str.len b)) (* 2 (str.to_int a))) 86))
(assert (<= (+ (* 9 (str.to_int x)) (* 10 (str.to_int y)) (* 9 (str.to_int z)) (* (- 8) (str.to_int a)) (* 4 (str.to_int b))) 54))
(assert (>= (+ (* (- 7) (str.len x)) (* 6 (str.len y)) (* 10 (str.len z)) (* 7 (str.len a)) (* 9 (str.len b))) 22))

(check-sat)