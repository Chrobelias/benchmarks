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

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "646") (str.to_re "0"))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "15")) (re.union (str.to_re "31") (str.to_re "444")))))
(assert (str.in_re z (re.union (re.++ (str.to_re "16") (re.+ (str.to_re "39"))) (str.to_re "87"))))
(assert (str.in_re a (re.++ (re.* (re.++ (str.to_re "922") (re.range "4" "6"))) (re.range "5" "9"))))
(assert (str.in_re b (re.+ (re.++ (str.to_re "692") (re.union (re.+ (str.to_re "2")) (str.to_re "521"))))))

(assert (< (+ (* (- 9) (str.len x)) (* (- 3) (str.len y)) (* (- 4) (str.to_int a)) (* 10 (str.to_int b))) 62))
(assert (= (+ (* 3 (str.to_int x)) (* 9 (str.to_int y)) (* 2 (str.to_int z)) (* (- 8) (str.to_int a)) (str.to_int b)) 99))
(assert (<= (+ (- (str.to_int x)) (* (- 10) (str.to_int y)) (* 10 (str.to_int z)) (* 5 (str.to_int a)) (* (- 7) (str.to_int b))) 9))
(assert (>= (+ (* (- 7) (str.len x)) (* (- 3) (str.len y)) (* (- 3) (str.len a)) (* 5 (str.len b))) 0))

(check-sat)