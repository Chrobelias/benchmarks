(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ z y) (str.++ x "47" a)))

(assert (str.in_re x (re.++ (re.* (re.* (re.range "4" "6"))) (re.* (str.to_re "856")))))
(assert (str.in_re a (re.union (str.to_re "63") (re.++ (re.range "4" "9") (re.* (re.range "0" "4"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "30") (str.to_re "75")) (re.* (str.to_re "25")))))
(assert (str.in_re z (re.union (re.union (str.to_re "14") (re.+ (str.to_re "208"))) (re.+ (re.range "1" "8")))))

(assert (< (+ (* (- 7) (str.to_int x)) (* 3 (str.to_int y)) (str.to_int z) (* (- 8) (str.to_int a))) 79))
(assert (< (+ (- (str.len x)) (* (- 3) (str.len y)) (* (- 5) (str.len z)) (* 7 (str.len a))) 71))

(check-sat)