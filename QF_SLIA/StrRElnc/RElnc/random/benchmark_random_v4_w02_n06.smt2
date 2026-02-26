(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ z y) (str.++ "62" "39" a x)))

(assert (str.in_re x (re.+ (re.++ (re.range "5" "9") (re.+ (str.to_re "4"))))))
(assert (str.in_re z (re.++ (re.* (str.to_re "510")) (re.* (str.to_re "62")))))
(assert (str.in_re y (re.+ (re.union (re.range "2" "8") (re.range "7" "9")))))
(assert (str.in_re a (re.union (re.* (re.union (re.+ (str.to_re "6")) (str.to_re "956"))) (str.to_re "6"))))

(assert (<= (+ (- (str.len x)) (* 2 (str.len y)) (* 4 (str.len z)) (* (- 3) (str.len a))) 97))
(assert (> (+ (* 2 (str.to_int x)) (* (- 5) (str.to_int y)) (* 9 (str.to_int z)) (* (- 7) (str.to_int a))) 68))

(check-sat)